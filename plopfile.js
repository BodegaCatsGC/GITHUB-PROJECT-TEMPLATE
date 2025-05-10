module.exports = function (plop) {
  plop.setGenerator('project', {
    description: 'Scaffold a new repo from Bodega Project Template',
    prompts: [
      {
        type: 'input',
        name: 'name',
        message: 'Project name (folder will be created):',
      },
      {
        type: 'list',
        name: 'projectType',
        message: 'Select project type:',
        choices: ['Python Library', 'Node Service', 'Full-Stack React'],
      },
      {
        type: 'confirm',
        name: 'includeTests',
        message: 'Include tests folder?',
        default: true,
      },
      {
        type: 'confirm',
        name: 'includeDocs',
        message: 'Include docs folder?',
        default: true,
      },
    ],
    actions: function (data) {
      const actions = [];

      // Add managed template files (⚠️)
      actions.push({
        type: 'addMany',
        base: 'templates/managed',
        destination: '{{name}}',
        templateFiles: 'templates/managed/**',
      });

      // Add common files
      actions.push({
        type: 'add',
        path: '{{name}}/README.md',
        templateFile: 'templates/common/README.md.hbs',
      });
      actions.push({
        type: 'add',
        path: '{{name}}/.gitignore',
        templateFile: 'templates/common/gitignore.hbs',
      });

      // Add project-type specific files
      if (data.projectType === 'Python Library') {
        actions.push({
          type: 'addMany',
          base: 'templates/python-library',
          destination: '{{name}}',
          templateFiles: 'templates/python-library/**',
        });
      } else if (data.projectType === 'Node Service') {
        actions.push({
          type: 'addMany',
          base: 'templates/node-service',
          destination: '{{name}}',
          templateFiles: 'templates/node-service/**',
        });
      } else if (data.projectType === 'Full-Stack React') {
        actions.push({
          type: 'addMany',
          base: 'templates/full-stack-react',
          destination: '{{name}}',
          templateFiles: 'templates/full-stack-react/**',
        });
      }

      // Add optional sections
      if (data.includeTests) {
        actions.push({
          type: 'addMany',
          base: 'templates/tests',
          destination: '{{name}}/tests',
          templateFiles: 'templates/tests/**',
        });
      }
      if (data.includeDocs) {
        actions.push({
          type: 'addMany',
          base: 'templates/docs',
          destination: '{{name}}/docs',
          templateFiles: 'templates/docs/**',
        });
      }

      return actions;
    },
  });
};
